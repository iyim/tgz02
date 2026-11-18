.class Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$1;
.super Ljava/lang/Object;
.source "StatisticsApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->init(Landroid/app/Application;)V
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

    .line 94
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "StatisticsApplication"

    const-string v1, "delay start Service"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$1;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->access$000(Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;)V

    return-void
.end method
