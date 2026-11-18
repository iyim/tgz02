.class Lcom/alibaba/genie/alarm/view/TimeSelectView$3;
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

    .line 81
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView$3;->this$0:Lcom/alibaba/genie/alarm/view/TimeSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView$3;->this$0:Lcom/alibaba/genie/alarm/view/TimeSelectView;

    invoke-virtual {p1}, Lcom/alibaba/genie/alarm/view/TimeSelectView;->onCancelClicked()V

    return-void
.end method
