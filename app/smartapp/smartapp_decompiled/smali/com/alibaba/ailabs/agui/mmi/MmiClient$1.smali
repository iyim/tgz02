.class Lcom/alibaba/ailabs/agui/mmi/MmiClient$1;
.super Ljava/lang/Object;
.source "MmiClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/agui/mmi/MmiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/agui/mmi/MmiClient;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/agui/mmi/MmiClient;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient$1;->this$0:Lcom/alibaba/ailabs/agui/mmi/MmiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiClient$1;->this$0:Lcom/alibaba/ailabs/agui/mmi/MmiClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->access$000(Lcom/alibaba/ailabs/agui/mmi/MmiClient;)V

    return-void
.end method
