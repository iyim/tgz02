.class Lcom/alibaba/genie/alarm/ui/AlarmListActivity$4;
.super Ljava/lang/Object;
.source "AlarmListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$4;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$4;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-static {p1}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$200(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$4;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$100(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;Z)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$4;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->onBackPressed()V

    :goto_0
    return-void
.end method
