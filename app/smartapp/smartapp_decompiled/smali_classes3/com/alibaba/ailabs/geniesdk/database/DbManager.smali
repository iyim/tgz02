.class public Lcom/alibaba/ailabs/geniesdk/database/DbManager;
.super Lcom/alibaba/ailabs/geniesdk/database/AbstractManager;
.source "DbManager.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "status_info"

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "status_info"

    const-string v1, "com.alibaba.ailabs.geniesdk.database.DbManager"

    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/geniesdk/database/AbstractManager;->add(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 35
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alibaba/ailabs/geniesdk/database/AbstractManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/database/DbManager;
    .locals 1

    const-string v0, "status_info"

    .line 40
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/geniesdk/database/AbstractManager;->getDbManager(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/geniesdk/database/DbManager;

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

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "media"

    const-string v2, "com.alibaba.ailabs.geniesdk.database.MediaTable"

    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
