.class public Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "DesktopGetResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean;
    }
.end annotation


# instance fields
.field private model:Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean;

.field private statusCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData;->model:Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData;->model:Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData$ModelBean;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponseData;->statusCode:Ljava/lang/String;

    return-void
.end method
