.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$1$w5iBqKx-IluUbEfRr0fIT7i5jHs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$1$w5iBqKx-IluUbEfRr0fIT7i5jHs;->f$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$1$w5iBqKx-IluUbEfRr0fIT7i5jHs;->f$1:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$1$w5iBqKx-IluUbEfRr0fIT7i5jHs;->f$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$1$w5iBqKx-IluUbEfRr0fIT7i5jHs;->f$1:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;->lambda$handleMessage$54$ItemRepository$1(Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;)V

    return-void
.end method
