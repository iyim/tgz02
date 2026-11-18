.class Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;)V
    .locals 0

    .line 2050
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$InputTextFilter;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3

    .line 2064
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$InputTextFilter;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->access$400(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    if-nez v0, :cond_3

    .line 2065
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2067
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2070
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2071
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p2

    invoke-interface {p4, p6, p2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2073
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 2076
    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$InputTextFilter;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->access$500(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;Ljava/lang/String;)I

    move-result p1

    .line 2083
    iget-object p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$InputTextFilter;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;

    invoke-static {p2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->access$600(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;)I

    move-result p2

    if-le p1, p2, :cond_2

    return-object v2

    :cond_2
    return-object v0

    .line 2089
    :cond_3
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2090
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-object v2

    .line 2093
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2094
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p1

    invoke-interface {p4, p6, p1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2095
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 2096
    iget-object p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$InputTextFilter;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;

    invoke-static {p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->access$400(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;)[Ljava/lang/String;

    move-result-object p3

    array-length p4, p3

    :goto_0
    if-ge v1, p4, :cond_6

    aget-object p6, p3, v1

    .line 2097
    invoke-virtual {p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2098
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2099
    iget-object p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$InputTextFilter;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2, p1, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->access$700(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;II)V

    .line 2100
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p6, p5, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v2
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .line 2059
    invoke-static {}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->access$300()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
