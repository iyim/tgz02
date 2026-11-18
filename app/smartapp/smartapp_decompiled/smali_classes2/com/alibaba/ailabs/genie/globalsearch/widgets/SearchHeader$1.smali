.class Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$1;
.super Ljava/lang/Object;
.source "SearchHeader.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->access$000(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)V

    return-void
.end method
