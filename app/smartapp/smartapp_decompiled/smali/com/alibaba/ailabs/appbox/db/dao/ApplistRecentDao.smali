.class public interface abstract Lcom/alibaba/ailabs/appbox/db/dao/ApplistRecentDao;
.super Ljava/lang/Object;
.source "ApplistRecentDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public varargs abstract delete([Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract getAllRecentApp()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM applist_recent"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApplistRecentBeanByAppid(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM applist_recent WHERE actionUrl=:actionUrl"
    .end annotation
.end method

.method public abstract getApplistRecentBeanByName(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM applist_recent WHERE name=:name"
    .end annotation
.end method

.method public abstract getApplistRecentBeanByPkgName(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM applist_recent WHERE actionUrl=:actionUrl"
    .end annotation
.end method

.method public varargs abstract insert([Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method
