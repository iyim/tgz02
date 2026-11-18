.class Lcom/alibaba/ailabs/genie/config/ConfigApplication$2;
.super Ljava/lang/Object;
.source "ConfigApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/config/ConfigApplication;->requestFlag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/config/ConfigApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/config/ConfigApplication;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/config/ConfigApplication$2;->this$0:Lcom/alibaba/ailabs/genie/config/ConfigApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 70
    new-instance v0, Lcom/alibaba/ailabs/genie/config/MtopApi;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/config/MtopApi;-><init>()V

    .line 71
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/config/MtopApi;->getDeviceFlag()V

    return-void
.end method
