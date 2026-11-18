.class Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle$1;
.super Ljava/lang/Object;
.source "ActivityLifecycle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle$1;->this$0:Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle$1;->this$0:Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->onGetEventInfo()Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle$1;->this$0:Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;

    invoke-static {v1}, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->access$000(Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;)Lcom/alibaba/ailabs/agui/mmi/MmiClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->setMmiInfo(Lcom/alibaba/ailabs/agui/mmi/MmiInfo;)V

    return-void
.end method
