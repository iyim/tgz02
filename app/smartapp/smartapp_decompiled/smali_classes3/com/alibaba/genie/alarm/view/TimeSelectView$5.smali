.class Lcom/alibaba/genie/alarm/view/TimeSelectView$5;
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

    .line 93
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView$5;->this$0:Lcom/alibaba/genie/alarm/view/TimeSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 96
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimeSelectView$5;->this$0:Lcom/alibaba/genie/alarm/view/TimeSelectView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alibaba/genie/alarm/view/TimeSelectView;->access$300(Lcom/alibaba/genie/alarm/view/TimeSelectView;I)V

    .line 97
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "frequency"

    const-string v1, "SELECTED_ONCE"

    .line 98
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "frequency_change"

    const-string v0, "alarmclock_display"

    const-string v1, "a1z3lt.12021506"

    const/4 v2, 0x0

    .line 99
    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
