.class public Lcom/alibaba/ailabs/genie/widgetui/WidgetUIToast;
.super Ljava/lang/Object;
.source "WidgetUIToast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static showGraphicToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 45
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/widgetui/R$layout;->widget_ui_graphic_toast_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    sget v1, Lcom/alibaba/ailabs/genie/widgetui/R$id;->root_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 48
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {p0, v3}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIDensityUtil;->px2dip(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_0

    const-string v1, ""

    .line 51
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    sget v1, Lcom/alibaba/ailabs/genie/widgetui/R$id;->toast_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 53
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 56
    :cond_0
    sget p1, Lcom/alibaba/ailabs/genie/widgetui/R$id;->toast_title:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 57
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    sget p1, Lcom/alibaba/ailabs/genie/widgetui/R$id;->toast_description:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 60
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    new-instance p1, Landroid/widget/Toast;

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x31

    const/4 p3, 0x0

    const/high16 v1, 0x41a00000    # 20.0f

    .line 63
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIDensityUtil;->px2dip(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {p1, p2, p3, p0}, Landroid/widget/Toast;->setGravity(III)V

    .line 64
    invoke-virtual {p1, p4}, Landroid/widget/Toast;->setDuration(I)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 66
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showPlainTextToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    .line 27
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/widgetui/R$layout;->widget_ui_plain_text_toast_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 29
    sget v1, Lcom/alibaba/ailabs/genie/widgetui/R$id;->root_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 30
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {p0, v3}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIDensityUtil;->px2dip(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    sget v1, Lcom/alibaba/ailabs/genie/widgetui/R$id;->toast_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 34
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    new-instance p1, Landroid/widget/Toast;

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 37
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIDensityUtil;->px2dip(Landroid/content/Context;F)I

    move-result p0

    const/16 v1, 0x31

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p0}, Landroid/widget/Toast;->setGravity(III)V

    .line 38
    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 40
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
