.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$ContactsFragment$OZI33RSvzdUs4p2bGbbS3IioM3Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$ContactsFragment$OZI33RSvzdUs4p2bGbbS3IioM3Y;->f$0:Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$ContactsFragment$OZI33RSvzdUs4p2bGbbS3IioM3Y;->f$0:Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/ContactsFragment;->lambda$subscribeContacts$49$ContactsFragment(Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;)V

    return-void
.end method
