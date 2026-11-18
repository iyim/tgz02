.class public Lcom/alibaba/ailabs/comm/data/DbMgr;
.super Lcom/alibaba/ailabs/comm/data/AbstractManager;
.source "DbMgr.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "agis"

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-class v0, Lcom/alibaba/ailabs/comm/data/DbMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "agis"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/comm/data/AbstractManager;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 26
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alibaba/ailabs/comm/data/AbstractManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/data/DbMgr;
    .locals 1

    const-string v0, "agis"

    .line 31
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/comm/data/AbstractManager;->getDbManager(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/comm/data/DbMgr;

    return-object p0
.end method

.method public static getTable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 35
    invoke-static {p0}, Lcom/alibaba/ailabs/comm/data/DbMgr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/data/DbMgr;

    move-result-object p0

    .line 37
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/comm/data/DbMgr;->getSqlService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getTableClass()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    invoke-static {}, Lcom/alibaba/ailabs/comm/data/AttrTable;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/ailabs/comm/data/AttrTable;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
