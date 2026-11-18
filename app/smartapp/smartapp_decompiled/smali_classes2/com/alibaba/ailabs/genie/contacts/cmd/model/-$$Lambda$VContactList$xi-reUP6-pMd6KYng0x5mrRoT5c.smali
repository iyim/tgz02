.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/cmd/model/-$$Lambda$VContactList$xi-reUP6-pMd6KYng0x5mrRoT5c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactList;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/-$$Lambda$VContactList$xi-reUP6-pMd6KYng0x5mrRoT5c;->f$0:Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/-$$Lambda$VContactList$xi-reUP6-pMd6KYng0x5mrRoT5c;->f$0:Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactList;

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactList;->lambda$fromJson$13(Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactList;Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;)V

    return-void
.end method
