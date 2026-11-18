.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$ContactsItemAdapter$XqdA7fpwIVtKrLDyi0rYQ3HB2ks;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;

.field private final synthetic f$2:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$ContactsItemAdapter$XqdA7fpwIVtKrLDyi0rYQ3HB2ks;->f$0:Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$ContactsItemAdapter$XqdA7fpwIVtKrLDyi0rYQ3HB2ks;->f$1:Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$ContactsItemAdapter$XqdA7fpwIVtKrLDyi0rYQ3HB2ks;->f$2:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$ContactsItemAdapter$XqdA7fpwIVtKrLDyi0rYQ3HB2ks;->f$0:Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$ContactsItemAdapter$XqdA7fpwIVtKrLDyi0rYQ3HB2ks;->f$1:Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$ContactsItemAdapter$XqdA7fpwIVtKrLDyi0rYQ3HB2ks;->f$2:Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;->lambda$onBindVH$51$ContactsItemAdapter(Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;Landroid/view/View;)V

    return-void
.end method
