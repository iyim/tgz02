.class public Lcom/alibaba/ailabs/genie/contacts/item/ContactsItem;
.super Ljava/lang/Object;
.source "ContactsItem.java"


# instance fields
.field private name:Ljava/lang/String;

.field private nickName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsItem;->nickName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsItem;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/ContactsItem;->nickName:Ljava/lang/String;

    return-object v0
.end method
