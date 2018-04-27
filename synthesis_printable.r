#!/usr/bin/Rscript

hexagon <- function(px=0, py=0, rotation=0){
    return(data.frame(x=px+cos(rotation + (0:5 * pi/3)),
                      y=py+sin(rotation + (0:5 * pi/3))));
}

## Board
pdf("synthesis_board.pdf", width=11, height=8);
pscale <- 0.8;
par(mar=c(0,0,0,0));
plot(NA, xlim=c(-9,9)*pscale, ylim=c(-2,11)*pscale, axes=FALSE, ann=FALSE);
for(xpi in -5:5){
    for(ypi in -10:10){
        px <- xpi*3+(((ypi %% 2) + 2) %% 2) * (1+cos(pi/3));
        py <- ypi * sin(pi/3);
        if((sqrt(px^2+py^2) < 7) && (ypi > 0)){
            segments(x0=hexagon(px=px, py=py)$x,
                     y0=hexagon(px=px, py=py)$y,
                     x1=hexagon(px=px, py=py, rotation=pi/3)$x,
                     y1=hexagon(px=px, py=py, rotation=pi/3)$y,
                     lwd = 3);
        }
    }
}
plot(NA, xlim=c(-9,9)*pscale, ylim=c(-2,11)*pscale, axes=FALSE, ann=FALSE);
for(xpi in -5:5){
    for(ypi in -10:10){
        px <- xpi*3+(((ypi %% 2) + 2) %% 2) * (1+cos(pi/3));
        py <- ypi * sin(pi/3);
        if((sqrt(px^2+py^2) < 7) && (ypi >= 0)){
            segments(x0=hexagon(px=px, py=py)$x,
                     y0=hexagon(px=px, py=py)$y,
                     x1=hexagon(px=px, py=py, rotation=pi/3)$x,
                     y1=hexagon(px=px, py=py, rotation=pi/3)$y,
                     lwd = 3);
        }
    }
}
invisible(dev.off());
 
## Cards

library(grid);

wrapper <- function(x, ...){ ## https://stackoverflow.com/a/3935429/3389895
  paste(strwrap(x, ...), collapse = "\n")
}

primes <- c(2,3,5,7,11,13,17,19);

card.data <- read.csv("cardData.csv", stringsAsFactors=FALSE);
card.cost <- c(0,1,3,7);
card.power <- c(0,2,5,10);

pdf("synthesis_cards.pdf", width=210/25.4, height=297/25.4);
for(page in rep(1:ceiling(nrow(card.data) / 12), 2)){
    grid.newpage()
    pushViewport(viewport(layout=grid.layout(nrow=4, ncol=3), width=0.95, height=0.95));
    for(cNum in ((page-1)*12):((page-1)*12+11)){
        if((cNum+1) > nrow(card.data)){
            next;
        }
        card.length <- card.data$PeptideCount[cNum+1];
        pep.seq <- sample(primes[1:4], card.length, replace=TRUE);
        pep.str <- paste(pep.seq, collapse="x");
        pushViewport(viewport(layout.pos.col=cNum %% 3+1,
                              layout.pos.row=trunc(cNum/3+1) %% 4 + 1));
        grid.rect(width=1, height=1, gp=gpar(lwd=3));
        grid.text(pep.str, x=0.1, y=0.95, just="left");
        grid.text(wrapper(card.data$Description[cNum+1], 30),
                  x=0.1, y=0.85, just=c("left","top"));
        grid.text(sprintf("%d/%d", card.cost[card.length],
                          card.power[card.length]),
                  x=0.95, y=0.95, just="right");
        if(card.data$Options[cNum+1] != ""){
            grid.text(paste(unlist(strsplit(card.data$Options[cNum+1],"")),
                            collapse="/"),
                      x=0.95, y=0.05, just="right");
        }
        numRows <- trunc(card.length / 2 + 0.5);
        numCols <- ceiling(card.length / numRows);
        pushViewport(viewport(layout=grid.layout(nrow=numRows, ncol=numCols),
                              width=0.7, height=0.4, x=0.5, y=0.25));
        for(pnum in 0:(card.length-1)){
            lCol <- pnum%%numCols+1;
            lRow <- trunc(pnum/numCols) + 1;
            pushViewport(viewport(layout.pos.col=lCol,
                                  layout.pos.row=lRow));
            pushViewport(viewport(width=unit(1,"snpc"), height=unit(1,"snpc"),
                                  just=ifelse(lCol==1,"right","left"),
                                  x=ifelse(lCol==1,1,0)));
            grid.rect(gp=gpar(lwd=3));
            grid.text(pep.seq[pnum+1]);
            popViewport(2);
        }
        popViewport(1);
        popViewport(1);
    }
}
invisible(dev.off());
