.class Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;
.super Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
.source "ItemRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handleMessage(Landroid/os/Message;)V

    .line 65
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance p1, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;-><init>()V

    .line 76
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$1$w5iBqKx-IluUbEfRr0fIT7i5jHs;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$1$w5iBqKx-IluUbEfRr0fIT7i5jHs;-><init>(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/FileTaskPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 67
    :cond_1
    new-instance p1, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;-><init>()V

    .line 68
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$1$bEoQ7AinQXO55hCmMOL7C0r7aUo;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$1$bEoQ7AinQXO55hCmMOL7C0r7aUo;-><init>(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/FileTaskPool;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$handleMessage$53$ItemRepository$1(Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;)V
    .locals 1

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;->setDataChange(Z)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->access$200(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;Lcom/alibaba/ailabs/genie/contacts/item/ContactsData;)V

    .line 71
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->access$302(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;Z)Z

    return-void
.end method

.method public synthetic lambda$handleMessage$54$ItemRepository$1(Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;)V
    .locals 1

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;->setDataChange(Z)V

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->access$000(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;)V

    .line 79
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->access$102(Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;Z)Z

    return-void
.end method
