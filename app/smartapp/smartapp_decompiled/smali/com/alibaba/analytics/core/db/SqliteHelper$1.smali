.class final Lcom/alibaba/analytics/core/db/SqliteHelper$1;
.super Ljava/lang/Object;
.source "SqliteHelper.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/core/db/SqliteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const/4 p1, 0x1

    .line 25
    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "DatabaseErrorHandler onCorruption"

    aput-object v2, v0, v1

    const-string v1, "SqliteHelper"

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-static {p1}, Lcom/alibaba/analytics/core/db/SqliteHelper;->access$002(Z)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
