.class Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder$1;
.super Landroid/view/ViewOutlineProvider;
.source "WakeupTipsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    .line 117
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;->access$500(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;)I

    move-result p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;->access$500(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p1, v0}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
