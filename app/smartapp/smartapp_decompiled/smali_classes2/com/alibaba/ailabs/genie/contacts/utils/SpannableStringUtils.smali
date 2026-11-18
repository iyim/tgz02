.class public Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils;
.super Ljava/lang/Object;
.source "SpannableStringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBuilder(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;
    .locals 2
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$Builder;-><init>(Ljava/lang/CharSequence;Lcom/alibaba/ailabs/genie/contacts/utils/SpannableStringUtils$1;)V

    return-object v0
.end method
