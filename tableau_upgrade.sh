#!/bin/sh

cp -f tableau_mono_logo.svg /opt/tableau/tableau_server/packages/vizportalclient.$1/public/img/tableau_mono_logo.svg
cp -f tableau_mono_logo.svg.gz /opt/tableau/tableau_server/packages/vizportalclient.$1/public/img/tableau_mono_logo.svg.gz
sed -i -e "s/rgb(42,87,117)/rgb(130,190,40)/g" /opt/tableau/tableau_server/packages/vizportalclient.$1/public/vizportal.js
sed -i -e "s/rgb(42,87,117)/rgb(130,190,40)/g" /opt/tableau/tableau_server/packages/vizportalclient.$1/public/vizportal.min.js
sed -i -e "s/2a5775/82be28/g" /opt/tableau/tableau_server/packages/vizportalclient.$1/public/vizportal.css
sed -i -e "s/rgb(35,74,99)/rgb(45,140,60)/g" /opt/tableau/tableau_server/packages/vizportalclient.$1/public/vizportal.js
sed -i -e "s/rgb(35,74,99)/rgb(45,140,60)/g" /opt/tableau/tableau_server/packages/vizportalclient.$1/public/vizportal.min.js
sed -i -e "s/rgb(28,57,77)/rgb(45,140,60)/g" /opt/tableau/tableau_server/packages/vizportalclient.$1/public/vizportal.js
sed -i -e "s/rgb(28,57,77)/rgb(45,140,60)/g" /opt/tableau/tableau_server/packages/vizportalclient.$1/public/vizportal.min.js
gzip -c /opt/tableau/tableau_server/packages/vizportalclient.$1/public/vizportal.js > /opt/tableau/tableau_server/packages/vizportalclient.$1/public/vizportal.js.gz
gzip -c /opt/tableau/tableau_server/packages/vizportalclient.$1/public/vizportal.min.js > /opt/tableau/tableau_server/packages/vizportalclient.$1/public/vizportal.min.js.gz
gzip -c /opt/tableau/tableau_server/packages/vizportalclient.$1/public/vizportal.css > /opt/tableau/tableau_server/packages/vizportalclient.$1/public/vizportal.css.gz
