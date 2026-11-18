.class Lcom/alibaba/genie/alarm/view/SingleWeeklyView$1;
.super Ljava/lang/Object;
.source "SingleWeeklyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/alarm/view/SingleWeeklyView;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView$1;->this$0:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 63
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView$1;->this$0:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-static {p1}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->access$000(Lcom/alibaba/genie/alarm/view/SingleWeeklyView;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->access$002(Lcom/alibaba/genie/alarm/view/SingleWeeklyView;Z)Z

    .line 64
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/SingleWeeklyView$1;->this$0:Lcom/alibaba/genie/alarm/view/SingleWeeklyView;

    invoke-static {p1}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->access$000(Lcom/alibaba/genie/alarm/view/SingleWeeklyView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/alarm/view/SingleWeeklyView;->setTabSelected(Z)V

    return-void
.end method
