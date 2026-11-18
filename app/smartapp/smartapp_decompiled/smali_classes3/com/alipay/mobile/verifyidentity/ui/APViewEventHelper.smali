.class public Lcom/alipay/mobile/verifyidentity/ui/APViewEventHelper;
.super Ljava/lang/Object;
.source "APViewEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/ui/APViewEventHelper$ClickListenerWrapper;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/verifyidentity/ui/APViewEventHelper$ClickListenerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setWrapper(Lcom/alipay/mobile/verifyidentity/ui/APViewEventHelper$ClickListenerWrapper;)V
    .locals 0

    .line 16
    sput-object p0, Lcom/alipay/mobile/verifyidentity/ui/APViewEventHelper;->a:Lcom/alipay/mobile/verifyidentity/ui/APViewEventHelper$ClickListenerWrapper;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static wrapClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 20
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/APViewEventHelper;->a:Lcom/alipay/mobile/verifyidentity/ui/APViewEventHelper$ClickListenerWrapper;

    if-nez v0, :cond_0

    return-object p0

    .line 23
    :cond_0
    invoke-interface {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/APViewEventHelper$ClickListenerWrapper;->wrap(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method public static wrapItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 27
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/APViewEventHelper;->a:Lcom/alipay/mobile/verifyidentity/ui/APViewEventHelper$ClickListenerWrapper;

    if-nez v0, :cond_0

    return-object p0

    .line 30
    :cond_0
    invoke-interface {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/APViewEventHelper$ClickListenerWrapper;->wrap(Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p0

    return-object p0
.end method
