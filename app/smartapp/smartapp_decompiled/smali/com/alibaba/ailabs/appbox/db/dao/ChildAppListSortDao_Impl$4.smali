.class Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao_Impl$4;
.super Landroidx/room/SharedSQLiteStatement;
.source "ChildAppListSortDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao_Impl;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao_Impl$4;->this$0:Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "update child_app_list_sort set sortIndex=? where appid=?"

    return-object v0
.end method
