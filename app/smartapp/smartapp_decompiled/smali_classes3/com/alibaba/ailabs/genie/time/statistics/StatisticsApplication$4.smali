.class Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$4;
.super Ljava/lang/Object;
.source "StatisticsApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->initScheduleExecutorService()V
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

    .line 158
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication$4;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "persist.sys.forbidden_mode"

    const-string v1, "0"

    .line 162
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
