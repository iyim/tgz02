.class Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$3;
.super Ljava/lang/Object;
.source "SmartAppApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->initOtherDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$3;->this$0:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 278
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->access$200()Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/smartapp/utils/UserUtils;->checkUserDisable(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
