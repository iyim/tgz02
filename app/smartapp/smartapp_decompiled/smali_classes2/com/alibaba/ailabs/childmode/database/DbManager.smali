.class public Lcom/alibaba/ailabs/childmode/database/DbManager;
.super Lcom/alibaba/ailabs/childmode/database/AbstractManager;
.source "DbManager.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "config_info.db"

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "config_info.db"

    const-string v1, "com.alibaba.ailabs.childmode.database.DbManager"

    .line 14
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/childmode/database/AbstractManager;->add(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 36
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alibaba/ailabs/childmode/database/AbstractManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getConfigInfoTable(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;
    .locals 1

    .line 45
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/database/DbManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/database/DbManager;

    move-result-object p0

    const-string v0, "childMode"

    .line 47
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/database/DbManager;->getSqlService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/database/DbManager;
    .locals 1

    const-string v0, "config_info.db"

    .line 41
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/childmode/database/AbstractManager;->getDbManager(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/childmode/database/DbManager;

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

    const-string v1, "childMode"

    const-string v2, "com.alibaba.ailabs.childmode.database.ConfigInfoTable"

    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "table class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DbManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
