.class Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$1;
.super Ljava/lang/Object;
.source "RippleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;->invalidate()V

    return-void
.end method
