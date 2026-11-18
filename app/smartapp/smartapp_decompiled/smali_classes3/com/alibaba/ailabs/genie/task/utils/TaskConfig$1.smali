.class final Lcom/alibaba/ailabs/genie/task/utils/TaskConfig$1;
.super Ljava/lang/Object;
.source "TaskConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/utils/TaskConfig;->checkAndStart(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/utils/TaskConfig$1;->val$pkg:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/task/utils/TaskConfig$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/utils/TaskConfig$1;->val$pkg:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/ailabs/genie/task/utils/TaskConfig;->startApp:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/utils/TaskConfig$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/utils/TaskConfig$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/task/utils/TaskConfig;->access$000(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
