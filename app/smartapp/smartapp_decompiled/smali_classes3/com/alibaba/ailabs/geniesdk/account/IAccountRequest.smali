.class public interface abstract Lcom/alibaba/ailabs/geniesdk/account/IAccountRequest;
.super Ljava/lang/Object;
.source "IAccountRequest.java"


# static fields
.field public static final ACCOUNT_REQUEST_METHOD_AUTO_BIND:I = 0x200

.field public static final ACCOUNT_REQUEST_METHOD_LOGIN_UI:I = 0x100

.field public static final ACCOUNT_REQUEST_METHOD_LOGOUT:I = 0x8

.field public static final ACCOUNT_REQUEST_METHOD_POLLING_LOGIN_STATUS:I = 0x2

.field public static final ACCOUNT_REQUEST_METHOD_QR_CODE:I = 0x1

.field public static final ACCOUNT_REQUEST_METHOD_REFRESH_TOKEN:I = 0x4


# virtual methods
.method public abstract onAccountRequest(ILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
