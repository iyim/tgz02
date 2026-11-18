.class public final Lcom/alibaba/ailabs/genie/smartapp/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# static fields
.field public static final APP_KEY:Ljava/lang/String; = "26062527"

.field public static final MOTU_APP_ID:Ljava/lang/String; = ""

.field public static final PROCESS_NAME_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECRET_KEY:Ljava/lang/String; = "533e2ee4f735c273739d400958329702"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/smartapp/AppConfig;->PROCESS_NAME_LIST:Ljava/util/ArrayList;

    .line 33
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/AppConfig;->PROCESS_NAME_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/AppConfig;->PROCESS_NAME_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm:TMAssistantDownloadSDKService"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/AppConfig;->PROCESS_NAME_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm:push"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/AppConfig;->PROCESS_NAME_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm:cuploader"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/AppConfig;->PROCESS_NAME_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm:nospace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/AppConfig;->PROCESS_NAME_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm:tools"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/AppConfig;->PROCESS_NAME_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm:sandbox"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/AppConfig;->PROCESS_NAME_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm:exdevice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
