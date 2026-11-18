.class Lcom/alibaba/genie/alarm/view/TimeSelectView$4;
.super Ljava/lang/Object;
.source "TimeSelectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/alarm/view/TimeSelectView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/alarm/view/TimeSelectView;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/alarm/view/TimeSelectView;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView$4;->this$0:Lcom/alibaba/genie/alarm/view/TimeSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 90
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView$4;->this$0:Lcom/alibaba/genie/alarm/view/TimeSelectView;

    invoke-static {p1}, Lcom/alibaba/genie/alarm/view/TimeSelectView;->access$000(Lcom/alibaba/genie/alarm/view/TimeSelectView;)Lcom/alibaba/genie/alarm/bean/AlarmBean;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView$4;->this$0:Lcom/alibaba/genie/alarm/view/TimeSelectView;

    invoke-static {v1}, Lcom/alibaba/genie/alarm/view/TimeSelectView;->access$100(Lcom/alibaba/genie/alarm/view/TimeSelectView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView$4;->this$0:Lcom/alibaba/genie/alarm/view/TimeSelectView;

    invoke-static {v2}, Lcom/alibaba/genie/alarm/view/TimeSelectView;->access$200(Lcom/alibaba/genie/alarm/view/TimeSelectView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/genie/alarm/view/TimeSelectView;->onSaveClicked(Lcom/alibaba/genie/alarm/bean/AlarmBean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
