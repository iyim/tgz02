.class public Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity;
.super Landroid/app/Activity;
.source "WarningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WarningDialog"

.field public static final URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/genie_warning"


# instance fields
.field private btnCancel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$layout;->dialog_warning:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity;->setContentView(I)V

    .line 28
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$id;->btn_cancel:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity;->btnCancel:Landroid/widget/TextView;

    .line 30
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity;->btnCancel:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity$1;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$id;->root1:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 38
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity$2;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$id;->root2:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 45
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity$3;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
