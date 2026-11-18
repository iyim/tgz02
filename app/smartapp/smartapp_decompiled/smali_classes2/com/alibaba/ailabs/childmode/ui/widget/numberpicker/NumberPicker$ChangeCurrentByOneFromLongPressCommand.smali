.class Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;)V
    .locals 0

    .line 2150
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0

    .line 2150
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private setStep(Z)V
    .locals 0

    .line 2154
    iput-boolean p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2159
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->access$900(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;Z)V

    .line 2160
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->access$1000(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
