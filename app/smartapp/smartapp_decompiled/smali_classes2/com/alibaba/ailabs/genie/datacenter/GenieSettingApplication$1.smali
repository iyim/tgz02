.class Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;
.super Ljava/lang/Object;
.source "GenieSettingApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/data/GenieDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->registerGenieDataListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .locals 2

    const-string v0, "GenieSettingApplication"

    const-string v1, "GenieSettingApplication GenieDataUtils IDeviceMirrorChanger onUpdate"

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1$1;-><init>(Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
