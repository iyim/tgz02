.class Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew$1;
.super Ljava/lang/Object;
.source "VisionRenew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew$1;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew$1;->this$0:Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->doStop()V

    return-void
.end method
