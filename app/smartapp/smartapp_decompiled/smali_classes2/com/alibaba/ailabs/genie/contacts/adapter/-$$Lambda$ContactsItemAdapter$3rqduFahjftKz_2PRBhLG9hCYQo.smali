.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$ContactsItemAdapter$3rqduFahjftKz_2PRBhLG9hCYQo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$ContactsItemAdapter$3rqduFahjftKz_2PRBhLG9hCYQo;->f$0:Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$ContactsItemAdapter$3rqduFahjftKz_2PRBhLG9hCYQo;->f$1:Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$ContactsItemAdapter$3rqduFahjftKz_2PRBhLG9hCYQo;->f$0:Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$ContactsItemAdapter$3rqduFahjftKz_2PRBhLG9hCYQo;->f$1:Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/ContactsItemAdapter;->lambda$onBindVH$52$ContactsItemAdapter(Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;Landroid/view/View;)V

    return-void
.end method
