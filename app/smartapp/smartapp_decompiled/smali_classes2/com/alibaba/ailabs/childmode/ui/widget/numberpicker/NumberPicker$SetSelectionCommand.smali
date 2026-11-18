.class Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;)V
    .locals 0

    .line 2137
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;I)I
    .locals 0

    .line 2137
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;I)I
    .locals 0

    .line 2137
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2143
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->access$800(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    return-void
.end method
