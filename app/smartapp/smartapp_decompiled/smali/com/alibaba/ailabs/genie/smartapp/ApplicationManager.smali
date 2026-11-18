.class public final Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# static fields
.field public static final sModules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    .line 9
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    const-string v2, "com.alibaba.ailabs.genie.smartapp"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/genie/tradepay/WebTradePayApplication;

    invoke-direct {v1, v3, v4}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;

    invoke-direct {v1, v3, v4}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/ailabs/genie/genieui/GenieBallApplication;

    invoke-direct {v1, v3, v4}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    const-class v4, Lcom/alibaba/ailabs/genie/authservice/AuthApplication;

    invoke-direct {v1, v3, v4}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/ailabs/genie/message/MessageCenterApplication;

    invoke-direct {v1, v3, v4}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    const-string v3, ":business"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/ailabs/genie/contacts/app/ContactsApplication;

    invoke-direct {v1, v4, v5}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/ailabs/genie/custom/contacts/app/ContactsApplication;

    invoke-direct {v1, v4, v5}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;

    invoke-direct {v1, v4, v5}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/ailabs/genie/config/ConfigApplication;

    invoke-direct {v1, v4, v5}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    const-string v4, "com.alibaba.genie.waft.gcs.featurefeedback.impl.FeatureFeedbackImpl"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/IFeatureFeedback;

    invoke-direct {v1, v4, v5}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/ailabs/genie/router/GenieAIRouterApplicaction;

    invoke-direct {v1, v4, v5}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    const-string v4, ":download"

    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/ailabs/appbox/BoxApplication;

    invoke-direct {v1, v4, v5}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/ailabs/genie/task/TaskApplication;

    invoke-direct {v1, v4, v5}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;

    invoke-direct {v1, v4, v5}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/ailabs/genie/genieui/GenieUiApplication;

    invoke-direct {v1, v4, v5}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    const-string v4, ":temp"

    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/genie/shopping/ShoppingApplication;

    invoke-direct {v1, v4, v5}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;

    invoke-direct {v1, v4, v5}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/alibaba/ailabs/genie/adv/AdvApplication;

    invoke-direct {v1, v2, v4}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    const-string v2, "com.alibaba.genie.waft.gcs.ut.imp.UtImp"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;

    invoke-direct {v1, v2, v4}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    const-string v2, "com.alibaba.tmall.genie.waft.gcs.jsworker.imp.GenieJsApiWorker"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/alibaba/tmall/genie/waft/gcs/jsworker/api/IGenieJsApiWorker;

    invoke-direct {v1, v2, v4}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    const-string v2, ":core"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/alibaba/ailabs/genie/assistant/MainApplication;

    invoke-direct {v1, v2, v4}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/alibaba/ailabs/genie/musicplayer/App;

    invoke-direct {v1, v2, v4}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    const-string v2, "com.alibaba.genie.waft.gcs.network.NetworkImpl"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/alibaba/genie/waft/gcs/network/api/Network;

    invoke-direct {v1, v2, v4}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/ailabs/genie/pay/GeniePayAudioApplication;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    const-string v2, "com.alibaba.ailabs.genie.authservice.RequestPermissionsImpl"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissions;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    const-string v2, "com.alibaba.ailabs.genie.smartapp:business"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/ailabs/basedomain/MainApplication;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;-><init>([Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
