.class Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView$1;
.super Ljava/lang/Object;
.source "TimePickerWeeklyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView$1;->this$0:Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView$1;->this$0:Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;

    invoke-virtual {p1}, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->onCancelClicked()V

    return-void
.end method
