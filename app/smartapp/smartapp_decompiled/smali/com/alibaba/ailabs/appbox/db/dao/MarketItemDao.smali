.class public interface abstract Lcom/alibaba/ailabs/appbox/db/dao/MarketItemDao;
.super Ljava/lang/Object;
.source "MarketItemDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public varargs abstract delete([Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract getMarketAppItemBeanByAppid(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM marketitem WHERE appid=:appid"
    .end annotation
.end method

.method public abstract getMarketAppItemBeanByPkgName(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM marketitem WHERE packageName=:pkgName"
    .end annotation
.end method

.method public abstract getMarketAppItemBeanByScheme(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM marketitem WHERE actionUrl=:scheme"
    .end annotation
.end method

.method public varargs abstract insert([Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public varargs abstract update([Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
