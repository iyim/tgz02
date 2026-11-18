.class public Lcom/alipay/android/app/render/birdnest/provider/CashierEmojiProvider;
.super Ljava/lang/Object;
.source "CashierEmojiProvider.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$EmojiProvider;


# instance fields
.field protected mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierEmojiProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    return-void
.end method


# virtual methods
.method public prepareContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public renderEmojiReturncount(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
