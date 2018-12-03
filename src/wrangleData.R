#Lorem ipsum dolor amet photo booth DIY affogato yuccie man bun seitan glossier.≈
# Minimal Wrangling of the data
gmpts <- bind_rows(gm182, gm182UP)
colnames(gmpts) <- c('trackNum', 'time', 'longitude', 'latitude', 'status')
