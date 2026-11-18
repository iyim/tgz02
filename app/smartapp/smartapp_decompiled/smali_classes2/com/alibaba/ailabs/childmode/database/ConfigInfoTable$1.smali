.class Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable$1;
.super Ljava/lang/Object;
.source "ConfigInfoTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->insert(Landroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable$1;->this$0:Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable$1;->this$0:Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;

    iget-object v0, v0, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/ListenModeManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->show(Z)V

    return-void
.end method
