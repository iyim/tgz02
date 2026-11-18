.class Lcom/alibaba/genie/alarm/ui/AlarmListActivity$3;
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

    .line 166
    iput-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$3;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$3;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$100(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;Z)V

    return-void
.end method
