.class public interface abstract Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;
.super Ljava/lang/Object;
.source "AppListItemDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract delete(Ljava/util/List;)V
    .annotation build Landroidx/room/Delete;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract delete([Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract deleteAll()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM applist"
    .end annotation
.end method

.method public abstract getAllApplist()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM applist"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstallList()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT *  from applist INNER JOIN applistsort ON applist.appid=applistsort.appid ORDER BY sortIndex"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUser(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM applist WHERE appid=:appid"
    .end annotation
.end method

.method public varargs abstract insert([Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public varargs abstract update([Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
