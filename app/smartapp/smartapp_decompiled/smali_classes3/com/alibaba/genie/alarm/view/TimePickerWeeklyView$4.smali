.class Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView$4;
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

    .line 70
    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView$4;->this$0:Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView$4;->this$0:Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;

    invoke-static {p1}, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->access$000(Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/alarm/view/TimePickerWeeklyView;->onSaveClicked(Ljava/util/List;)V

    return-void
.end method
