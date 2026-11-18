.class Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$5;
.super Landroid/content/BroadcastReceiver;
.source "StatisticsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$5;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "StatisticsApplication"

    const-string p2, "onReceive"

    .line 200
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$5;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->access$000(Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;)V

    return-void
.end method
