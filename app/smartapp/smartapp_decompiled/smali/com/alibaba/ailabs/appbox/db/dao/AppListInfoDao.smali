.class public interface abstract Lcom/alibaba/ailabs/appbox/db/dao/AppListInfoDao;
.super Ljava/lang/Object;
.source "AppListInfoDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public varargs abstract delete([Lcom/alibaba/ailabs/appbox/bean/db/ApplistInfoBean;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract getInfo(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistInfoBean;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM applistinfo WHERE appid=:appid"
    .end annotation
.end method

.method public varargs abstract insert([Lcom/alibaba/ailabs/appbox/bean/db/ApplistInfoBean;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public varargs abstract update([Lcom/alibaba/ailabs/appbox/bean/db/ApplistInfoBean;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
