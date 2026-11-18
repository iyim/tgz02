.class public Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactDetailResp;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "ContactDetailResp.java"


# instance fields
.field private model:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactDetailResp;->model:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactDetailResp;->model:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    return-void
.end method
