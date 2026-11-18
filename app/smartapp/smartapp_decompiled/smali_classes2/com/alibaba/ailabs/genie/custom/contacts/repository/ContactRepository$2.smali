.class Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$2;
.super Ljava/lang/Object;
.source "ContactRepository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->fetchData(IZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;I)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$2;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

    iput p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$2;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$2;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;

    iget v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository$2;->val$offset:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/custom/contacts/repository/ContactRepository;->fetchData(IZLandroid/content/Context;)V

    return-void
.end method
