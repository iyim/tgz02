.class Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "ChildAppListSortDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao_Impl;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao_Impl$3;->this$0:Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;)V
    .locals 3

    .line 72
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;->getSortIndex()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 73
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 74
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 78
    :goto_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 79
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;->getAppid()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p2, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `child_app_list_sort` SET `sortIndex` = ?,`appid` = ? WHERE `appid` = ?"

    return-object v0
.end method
