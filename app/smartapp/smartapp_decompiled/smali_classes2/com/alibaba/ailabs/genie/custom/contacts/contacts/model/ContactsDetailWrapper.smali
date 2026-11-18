.class public Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;
.super Ljava/lang/Object;
.source "ContactsDetailWrapper.java"


# instance fields
.field private contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

.field private errorCode:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getContacts()Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setContacts(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;->contacts:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;->message:Ljava/lang/String;

    return-void
.end method
