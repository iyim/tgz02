.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$1$bEoQ7AinQXO55hCmMOL7C0r7aUo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$1$bEoQ7AinQXO55hCmMOL7C0r7aUo;->f$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$1$bEoQ7AinQXO55hCmMOL7C0r7aUo;->f$1:Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$1$bEoQ7AinQXO55hCmMOL7C0r7aUo;->f$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$1$bEoQ7AinQXO55hCmMOL7C0r7aUo;->f$1:Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;->lambda$handleMessage$53$ItemRepository$1(Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;)V

    return-void
.end method
