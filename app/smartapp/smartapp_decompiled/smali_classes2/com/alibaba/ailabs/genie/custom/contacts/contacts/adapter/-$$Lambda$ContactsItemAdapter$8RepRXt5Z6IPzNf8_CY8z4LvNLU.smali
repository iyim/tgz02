.class public final synthetic Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/-$$Lambda$ContactsItemAdapter$8RepRXt5Z6IPzNf8_CY8z4LvNLU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/-$$Lambda$ContactsItemAdapter$8RepRXt5Z6IPzNf8_CY8z4LvNLU;->f$0:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/-$$Lambda$ContactsItemAdapter$8RepRXt5Z6IPzNf8_CY8z4LvNLU;->f$1:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/-$$Lambda$ContactsItemAdapter$8RepRXt5Z6IPzNf8_CY8z4LvNLU;->f$0:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/-$$Lambda$ContactsItemAdapter$8RepRXt5Z6IPzNf8_CY8z4LvNLU;->f$1:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->lambda$onBindContactVH$23$ContactsItemAdapter(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;Landroid/view/View;)V

    return-void
.end method
