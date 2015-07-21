.class public abstract Lcom/lge/systemservice/core/IWfdManager$Stub;
.super Landroid/os/Binder;
.source "IWfdManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/IWfdManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/IWfdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IWfdManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.IWfdManager"

.field static final TRANSACTION_cancelP2pConnect:I = 0x7

.field static final TRANSACTION_cancelWifiDisplayConnect:I = 0x3

.field static final TRANSACTION_clientConnect:I = 0x11

.field static final TRANSACTION_discoverWfdPeers:I = 0x5

.field static final TRANSACTION_getRtspState:I = 0x13

.field static final TRANSACTION_getTargetUrl:I = 0xe

.field static final TRANSACTION_getWfdMode:I = 0xc

.field static final TRANSACTION_getWfdState:I = 0x12

.field static final TRANSACTION_informConnectionRequstedUdn:I = 0x4

.field static final TRANSACTION_requestConnect:I = 0x6

.field static final TRANSACTION_setTargetIpAddress_Url:I = 0x10

.field static final TRANSACTION_setTargetRtspPort:I = 0xf

.field static final TRANSACTION_setTargetUrl:I = 0xd

.field static final TRANSACTION_setUiState:I = 0x8

.field static final TRANSACTION_setUiStateOff:I = 0xa

.field static final TRANSACTION_setUiStateOn:I = 0x9

.field static final TRANSACTION_setWfdMode:I = 0xb

.field static final TRANSACTION_setWifiDisplayEnabled:I = 0x1

.field static final TRANSACTION_setWifiDisplayEnabledWithPopUp:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IWfdManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.lge.systemservice.core.IWfdManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/systemservice/core/IWfdManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/lge/systemservice/core/IWfdManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/IWfdManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 46
    :sswitch_0
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v6, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 54
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->setWifiDisplayEnabled(Z)Z

    move-result v3

    .line 55
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v3, :cond_0

    move v5, v4

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_1
    move v0, v5

    .line 53
    goto :goto_1

    .line 61
    :sswitch_2
    const-string v6, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 64
    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->setWifiDisplayEnabledWithPopUp(Z)Z

    move-result v3

    .line 65
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v3, :cond_2

    move v5, v4

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_3
    move v0, v5

    .line 63
    goto :goto_2

    .line 71
    :sswitch_3
    const-string v6, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->cancelWifiDisplayConnect()Z

    move-result v3

    .line 73
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v3, :cond_4

    move v5, v4

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v3    # "_result":Z
    :sswitch_4
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->informConnectionRequstedUdn(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/systemservice/core/IWfdServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IWfdServiceListener;

    move-result-object v0

    .line 91
    .local v0, "_arg0":Lcom/lge/systemservice/core/IWfdServiceListener;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->discoverWfdPeers(Lcom/lge/systemservice/core/IWfdServiceListener;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 97
    .end local v0    # "_arg0":Lcom/lge/systemservice/core/IWfdServiceListener;
    :sswitch_6
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/systemservice/core/IWfdServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IWfdServiceListener;

    move-result-object v2

    .line 104
    .local v2, "_arg2":Lcom/lge/systemservice/core/IWfdServiceListener;
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/systemservice/core/IWfdManager$Stub;->requestConnect(Ljava/lang/String;ILcom/lge/systemservice/core/IWfdServiceListener;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 110
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/lge/systemservice/core/IWfdServiceListener;
    :sswitch_7
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/systemservice/core/IWfdServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IWfdServiceListener;

    move-result-object v0

    .line 113
    .local v0, "_arg0":Lcom/lge/systemservice/core/IWfdServiceListener;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->cancelP2pConnect(Lcom/lge/systemservice/core/IWfdServiceListener;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 119
    .end local v0    # "_arg0":Lcom/lge/systemservice/core/IWfdServiceListener;
    :sswitch_8
    const-string v6, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    move v0, v4

    .line 122
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->setUiState(Z)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_5
    move v0, v5

    .line 121
    goto :goto_3

    .line 128
    :sswitch_9
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->setUiStateOn()I

    move-result v3

    .line 130
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    .end local v3    # "_result":I
    :sswitch_a
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->setUiStateOff(I)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 145
    .end local v0    # "_arg0":I
    :sswitch_b
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->setWfdMode(I)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 154
    .end local v0    # "_arg0":I
    :sswitch_c
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->getWfdMode()I

    move-result v3

    .line 156
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v3    # "_result":I
    :sswitch_d
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->setTargetUrl(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 171
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->getTargetUrl()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 182
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->setTargetRtspPort(I)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 188
    .end local v0    # "_arg0":I
    :sswitch_10
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 191
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->setTargetIpAddress_Url(I)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 197
    .end local v0    # "_arg0":I
    :sswitch_11
    const-string v6, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->clientConnect()Z

    move-result v3

    .line 199
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v3, :cond_6

    move v5, v4

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 205
    .end local v3    # "_result":Z
    :sswitch_12
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->getWfdState()I

    move-result v3

    .line 207
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 213
    .end local v3    # "_result":I
    :sswitch_13
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->getRtspState()I

    move-result v3

    .line 215
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
