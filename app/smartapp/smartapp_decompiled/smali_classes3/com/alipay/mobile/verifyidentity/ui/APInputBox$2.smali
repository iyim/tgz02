.class Lcom/alipay/mobile/verifyidentity/ui/APInputBox$2;
.super Ljava/lang/Object;
.source "APInputBox.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)V
    .locals 1

    .line 309
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 12

    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    iget-object v4, v4, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->hasFocus()Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->onInputTextStatusChanged(ZZ)V

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Lcom/alipay/mobile/verifyidentity/ui/inputfomatter/APFormatter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 324
    invoke-interface {p1}, Landroid/text/Editable;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 329
    array-length v1, v0

    if-lez v1, :cond_3

    .line 330
    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    aget-object v5, v0, v4

    .line 331
    instance-of v6, v5, Landroid/text/InputFilter$LengthFilter;

    if-eqz v6, :cond_2

    .line 334
    :try_start_0
    iget-object v6, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-static {v6}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Lcom/alipay/mobile/verifyidentity/ui/inputfomatter/APFormatter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 335
    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 336
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "InputFilter"

    .line 337
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 339
    invoke-virtual {v9, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 340
    iget-object v6, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-static {v6}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Lcom/alipay/mobile/verifyidentity/ui/inputfomatter/APFormatter;

    move-result-object v6

    new-array v7, v2, [Landroid/text/InputFilter;

    aput-object v5, v7, v3

    invoke-virtual {v9, v6, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_0
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 349
    :cond_3
    new-array v1, v3, [Landroid/text/InputFilter;

    invoke-interface {p1, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 350
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->access$000(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Lcom/alipay/mobile/verifyidentity/ui/inputfomatter/APFormatter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alipay/mobile/verifyidentity/ui/inputfomatter/APFormatter;->format(Landroid/text/Editable;)V

    .line 351
    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    :cond_4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
